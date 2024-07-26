import { useBackend } from '../backend';
import { 
  Button,
  LabeledList,
  Section
} from '../components';
import { Window } from '../layouts';

export const StalkerPDA_Ranking = (props) => {
  const { act, data } = useBackend<Data>(props);
  const { profiles = [] } = data;

  return (
    <Window width={500} height={700} title={'STALKER Rankings'}>
      <Window.Content scrollable>
        <Section>
          <Button
            content={'Return'}
            onClick={() => act('return')}
          />
        </Section>
        {profiles.map((profile) => (
          <Section title={profile.name}>
            <LabeledList>
              <LabeledList.Item
                label={'Faction'}
                content={profile.faction}
              />
              <LabeledList.Item
                label={'Money'}
                content={profile.money}
              />
              <LabeledList.Item
                label={'Experience'}
                content={profile.experience}
              />
            </LabeledList>
          </Section>
        ))}
      </Window.Content>
    </Window>
  );
};
