import { useBackend } from '../backend';
import { 
  Button, 
  LabeledList, 
  Section 
} from '../components';
import { Window } from '../layouts';

export const StalkerPDA = (props) => {
  const { act, data } = useBackend<Data>(props);
  const { name, faction, money, experience, programs = []} = data;

  return (
    <Window width={500} height={700} title={'STALKER PDA'}>
      <Window.Content scrollable>
        <Section title={'Stats'}>
          <LabeledList>
            <LabeledList.Item
              label={'Name'}
              content={name}
            />
            <LabeledList.Item
              label={'Faction'}
              content={faction}
            />
            <LabeledList.Item
              label={'Money'}
              content={money}
            />
            <LabeledList.Item
              label={'Experience'}
              content={experience}
            />
          </LabeledList>
        </Section>
        <Section title={'Applications'}>
          {programs.map((program) => (
            <Button
              content={program.name}
              onClick={() => act('openProgram', {
                program: program.name
              })}
            />
          ))}
        </Section>
      </Window.Content>
    </Window>
  );
};
